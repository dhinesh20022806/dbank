export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'checkBalance' : IDL.Func([], [IDL.Nat], ['query']),
    'toUp' : IDL.Func([IDL.Nat], [], ['oneway']),
    'withdraw' : IDL.Func([IDL.Nat], [], ['oneway']),
  });
};
export const init = ({ IDL }) => { return []; };
