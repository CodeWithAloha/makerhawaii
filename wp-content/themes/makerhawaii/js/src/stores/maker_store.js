import immstruct, {Structure} from 'immstruct';

const content = document.querySelector('.post-content')

export const MAKER_STORE =
  new Structure({
    key: 'makers',
    data: {
      makerspaces: [],
      intro_text: (content) ? content.innerHTML : 'Please scroll down',
      scrolling: false,
      mobile: window.innerWidth < 1280,
      active_space: null
    }
  });

//initialize makerspaces
let req = new XMLHttpRequest();
req.open('GET', 'makerspaces', 1);
req.send();
req.onload = () => {
  const spaces = JSON.parse(req.responseText);
  MAKER_STORE
    .cursor('makerspaces')
    .update(() => spaces);
};
