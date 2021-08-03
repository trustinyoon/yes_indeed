import { combineReducers } from 'redux';

// import benches from './benches_reducer';
// import reviews from './reviews_reducer';
import users from './users_reducer';

const entitiesReducer = combineReducers({
  users
});

export default entitiesReducer;