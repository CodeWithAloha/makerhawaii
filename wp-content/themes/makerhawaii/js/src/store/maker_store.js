import {Structure} from 'immstruct';
export const MAKER_STORE =
  new Structure({
    makerspaces: [],
    active_space: null
  });

//initialize makerspaces
const req = new XMLHttpRequest();
req.open('GET', '/makerspaces', true);
req.send();
req.onload = () => {
  const spaces = JSON.parse(req.responseText);
  MAKER_STORE.cursor(['makerspaces']).update(() => {
    return spaces;
  });
};
