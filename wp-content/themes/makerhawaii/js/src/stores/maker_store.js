import immstruct, {Structure} from 'immstruct';
export const MAKER_STORE =
  new Structure({
    key: 'makers',
    data: {
      makerspaces: [],
      scrolling: false,
      mobile: window.innerWidth < 1280,
      active_space: null
    }
  });
  
//initialize makerspaces
fetch('/makerspaces')
  .then((res) => res.json())
  .then((spaces) => {
    MAKER_STORE
      .cursor('makerspaces')
      .update(() => spaces);
  })
