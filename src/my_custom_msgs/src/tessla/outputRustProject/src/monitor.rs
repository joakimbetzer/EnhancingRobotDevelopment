// This Rust code was automatically created by tessla-compiler from a TeSSLa Specification
// #![allow(unused_parens, unused_variables, non_snake_case, non_camel_case_types, uncommon_codepoints, non_upper_case_globals)]

extern crate tessla_stdlib;

use std::borrow::BorrowMut;
use std::marker::PhantomData;

use tessla_stdlib::*;

pub struct State<E, Fprioritize, BFprioritize>
where
    Fprioritize: (FnMut(TesslaFloat, i64) -> Result<(), E>) + ?Sized,
    BFprioritize: BorrowMut<Fprioritize>,
{
    current_ts: i64,
    last_processed_ts: i64,
    _marker: PhantomData<E>,
    out_prioritize: BFprioritize, /* prioritize */
    var_1077_: EventContainer<TesslaInt>,
    var_1072_: EventContainer<TesslaInt>,
    var_1081_: EventContainer<TesslaBool>,
    var_1094_: EventContainer<TesslaBool>,
    var_1071_: EventContainer<TesslaFloat>,
    var_1096_: EventContainer<TesslaFloat>,
    var_diff_1104_: EventContainer<TesslaFloat>,
    var_1105_: EventContainer<TesslaFloat>,
    var_1103_: EventContainer<TesslaBool>,
    var_1109_: EventContainer<TesslaFloat>,
    var_1108_: EventContainer<TesslaFloat>,
    var_1107_: EventContainer<TesslaFloat>,
    var_action_1102_: EventContainer<TesslaFloat>,
    var_1111_: EventContainer<TesslaFloat>,
    var_1101_: EventContainer<TesslaBool>,
    var_newAction_1100_: EventContainer<TesslaFloat>,
    var_1099_: EventContainer<TesslaBool>,
    var_1115_: EventContainer<TesslaFloat>,
    var_1098_: EventContainer<TesslaFloat>,
    var_1044_: EventContainer<TesslaBool>,
    var_1070_: EventContainer<TesslaFloat>,
    var_1050_: EventContainer<TesslaBool>,
    var_1053_: EventContainer<TesslaBool>,
    var_1049_: EventContainer<TesslaBool>,
    var_1057_: EventContainer<TesslaFloat>,
    var_1063_: EventContainer<TesslaBool>,
    var_1066_: EventContainer<TesslaInt>,
    var_1069_: EventContainer<TesslaBool>,
    var_1068_: EventContainer<TesslaInt>,
    var_getOrientation_1062_: EventContainer<TesslaInt>,
    var_1061_: EventContainer<TesslaBool>,
    var_1079_: EventContainer<TesslaBool>,
    var_1078_: EventContainer<TesslaBool>,
    var_1085_: EventContainer<TesslaBool>,
    var_1089_: EventContainer<TesslaBool>,
    var_1088_: EventContainer<TesslaBool>,
    var_1084_: EventContainer<TesslaBool>,
    var_stop_1060_: EventContainer<TesslaBool>,
    var_1059_: EventContainer<TesslaFloat>,
    var_faultyActualSpeed_1043_: EventContainer<TesslaBool>,
    var_prioritize_1042_: EventContainer<TesslaFloat>,
    _marker_prioritize: PhantomData<Fprioritize>,
    var_actualSpeed: EventContainer<TesslaFloat>,
    var_lidarFront: EventContainer<TesslaFloat>,
    var_lidarBack: EventContainer<TesslaFloat>,
    var_expectedSpeed: EventContainer<TesslaFloat>,
    var_brakingDist: EventContainer<TesslaFloat>,
}

impl<E, Fprioritize, BFprioritize> State<E, Fprioritize, BFprioritize>
where
    Fprioritize: (FnMut(TesslaFloat, i64) -> Result<(), E>) + ?Sized,
    BFprioritize: BorrowMut<Fprioritize>,
{
    pub fn new(out_prioritize: BFprioritize /* prioritize */) -> Self {
        Self {
            current_ts: 0,
            last_processed_ts: 0,
            _marker: PhantomData,
            var_1077_: init(),
            var_1072_: init_with_value(Value(-1_i64)),
            var_1081_: init(),
            var_1094_: init_with_value(Value(false)),
            var_1071_: init(),
            var_1096_: init_with_value(Value(2.0_f64)),
            var_diff_1104_: init(),
            var_1105_: init_with_value(Value(0.03_f64)),
            var_1103_: init(),
            var_1109_: init_with_value(Value(0.5_f64)),
            var_1108_: init(),
            var_1107_: init(),
            var_action_1102_: init(),
            var_1111_: init_with_value(Value(0.22_f64)),
            var_1101_: init(),
            var_newAction_1100_: init(),
            var_1099_: init(),
            var_1115_: init_with_value(Value(3.0_f64)),
            var_1098_: init(),
            var_1044_: init(),
            var_1070_: init_with_value(Value(0.0_f64)),
            var_1050_: init(),
            var_1053_: init_with_value(Value(true)),
            var_1049_: init(),
            var_1057_: init_with_value(Value(1.0_f64)),
            var_1063_: init(),
            var_1066_: init_with_value(Value(1_i64)),
            var_1069_: init(),
            var_1068_: init(),
            var_getOrientation_1062_: init(),
            var_1061_: init(),
            var_1079_: init(),
            var_1078_: init(),
            var_1085_: init(),
            var_1089_: init(),
            var_1088_: init(),
            var_1084_: init(),
            var_stop_1060_: init(),
            var_1059_: init(),
            var_faultyActualSpeed_1043_: init(),
            var_prioritize_1042_: init(),
            out_prioritize: out_prioritize,
            _marker_prioritize: PhantomData,
            var_actualSpeed: init(),
            var_lidarFront: init(),
            var_lidarBack: init(),
            var_expectedSpeed: init(),
            var_brakingDist: init(),
        }
    }

    pub fn get_current_ts(&self) -> i64 {
        self.current_ts
    }

    pub fn set_actualSpeed(&mut self, value: TesslaFloat) {
        self.var_actualSpeed.set_event(value);
    }

    pub fn set_lidarFront(&mut self, value: TesslaFloat) {
        self.var_lidarFront.set_event(value);
    }

    pub fn set_lidarBack(&mut self, value: TesslaFloat) {
        self.var_lidarBack.set_event(value);
    }

    pub fn set_expectedSpeed(&mut self, value: TesslaFloat) {
        self.var_expectedSpeed.set_event(value);
    }

    pub fn set_brakingDist(&mut self, value: TesslaFloat) {
        self.var_brakingDist.set_event(value);
    }

    pub fn flush(&mut self) -> Result<(), E> {
        self.step(self.current_ts, true)
    }

    pub fn step(&mut self, new_input_ts: i64, flush: bool) -> Result<(), E> {
        let mut flush_required = flush;

        if new_input_ts > self.current_ts || flush_required {
            let mut do_processing = true;
            while do_processing {
                if self.current_ts == new_input_ts && !flush_required {
                    do_processing = false;
                } else {
                    default(&mut self.var_1072_, &self.var_1077_);
                    default(&mut self.var_1094_, &self.var_1081_);
                    default(&mut self.var_1096_, &self.var_1071_);
                    slift2(
                        &mut self.var_diff_1104_,
                        &self.var_expectedSpeed,
                        &self.var_actualSpeed,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return (tLPar_0 - tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    default(&mut self.var_1105_, &self.var_1071_);
                    slift2(
                        &mut self.var_1103_,
                        &self.var_diff_1104_,
                        &self.var_1105_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.ge(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    default(&mut self.var_1109_, &self.var_1071_);
                    slift2(
                        &mut self.var_1108_,
                        &self.var_diff_1104_,
                        &self.var_1109_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return (tLPar_0 * tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1107_,
                        &self.var_expectedSpeed,
                        &self.var_1108_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return (tLPar_0 + tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_action_1102_,
                        &self.var_1103_,
                        &self.var_1107_,
                        &self.var_expectedSpeed,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaFloat, tLPar_2: TesslaFloat| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    default(&mut self.var_1111_, &self.var_1071_);
                    slift2(
                        &mut self.var_1101_,
                        &self.var_action_1102_,
                        &self.var_1111_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.gt(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_newAction_1100_,
                        &self.var_1101_,
                        &self.var_1111_,
                        &self.var_action_1102_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaFloat, tLPar_2: TesslaFloat| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1099_,
                        &self.var_newAction_1100_,
                        &self.var_expectedSpeed,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.eq(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    default(&mut self.var_1115_, &self.var_1071_);
                    slift3(
                        &mut self.var_1098_,
                        &self.var_1099_,
                        &self.var_1115_,
                        &self.var_newAction_1100_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaFloat, tLPar_2: TesslaFloat| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1044_,
                        &self.var_actualSpeed,
                        &self.var_1111_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.gt(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    default(&mut self.var_1070_, &self.var_1071_);
                    slift2(
                        &mut self.var_1050_,
                        &self.var_actualSpeed,
                        &self.var_1070_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.lt(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    default(&mut self.var_1053_, &self.var_1081_);
                    slift3(
                        &mut self.var_1049_,
                        &self.var_1050_,
                        &self.var_1053_,
                        &self.var_1094_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaBool, tLPar_2: TesslaBool| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    default(&mut self.var_1057_, &self.var_1071_);
                    slift2(
                        &mut self.var_1063_,
                        &self.var_expectedSpeed,
                        &self.var_1070_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.ge(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    default(&mut self.var_1066_, &self.var_1077_);
                    slift2(
                        &mut self.var_1069_,
                        &self.var_expectedSpeed,
                        &self.var_1070_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.lt(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_1068_,
                        &self.var_1069_,
                        &self.var_1072_,
                        &self.var_1066_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaInt, tLPar_2: TesslaInt| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_getOrientation_1062_,
                        &self.var_1063_,
                        &self.var_1066_,
                        &self.var_1068_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaInt, tLPar_2: TesslaInt| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1061_,
                        &self.var_getOrientation_1062_,
                        &self.var_1066_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaInt, tLPar_1: TesslaInt| return tLPar_0.eq(&tLPar_1))
                                as fn(_, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1079_,
                        &self.var_lidarFront,
                        &self.var_brakingDist,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.le(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_1078_,
                        &self.var_1079_,
                        &self.var_1053_,
                        &self.var_1094_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaBool, tLPar_2: TesslaBool| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1085_,
                        &self.var_getOrientation_1062_,
                        &self.var_1072_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaInt, tLPar_1: TesslaInt| return tLPar_0.eq(&tLPar_1))
                                as fn(_, _) -> _,
                        ),
                    );
                    slift2(
                        &mut self.var_1089_,
                        &self.var_lidarBack,
                        &self.var_brakingDist,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaFloat, tLPar_1: TesslaFloat| {
                                return tLPar_0.le(&tLPar_1);
                            }) as fn(_, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_1088_,
                        &self.var_1089_,
                        &self.var_1053_,
                        &self.var_1094_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaBool, tLPar_2: TesslaBool| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_1084_,
                        &self.var_1085_,
                        &self.var_1088_,
                        &self.var_1094_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaBool, tLPar_2: TesslaBool| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_stop_1060_,
                        &self.var_1061_,
                        &self.var_1078_,
                        &self.var_1084_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaBool, tLPar_2: TesslaBool| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_1059_,
                        &self.var_stop_1060_,
                        &self.var_1096_,
                        &self.var_1098_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaFloat, tLPar_2: TesslaFloat| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_faultyActualSpeed_1043_,
                        &self.var_1044_,
                        &self.var_1053_,
                        &self.var_1049_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaBool, tLPar_2: TesslaBool| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    slift3(
                        &mut self.var_prioritize_1042_,
                        &self.var_faultyActualSpeed_1043_,
                        &self.var_1057_,
                        &self.var_1059_,
                        TesslaValue::wrap(
                            (|tLPar_0: TesslaBool, tLPar_1: TesslaFloat, tLPar_2: TesslaFloat| {
                                return match /* if */ (tLPar_0) {
    Error(error) => Error(error),
    Value(true) => { /* then */ tLPar_1 },
    Value(false) => { /* else */ tLPar_2 }
};
                            }) as fn(_, _, _) -> _,
                        ),
                    );
                    self.var_prioritize_1042_
                        .call_output(self.out_prioritize.borrow_mut(), self.current_ts)?;

                    self.var_1077_.update_last();
                    self.var_1072_.update_last();
                    self.var_1081_.update_last();
                    self.var_1094_.update_last();
                    self.var_1071_.update_last();
                    self.var_1096_.update_last();
                    self.var_diff_1104_.update_last();
                    self.var_1105_.update_last();
                    self.var_1103_.update_last();
                    self.var_1109_.update_last();
                    self.var_1108_.update_last();
                    self.var_1107_.update_last();
                    self.var_action_1102_.update_last();
                    self.var_1111_.update_last();
                    self.var_1101_.update_last();
                    self.var_newAction_1100_.update_last();
                    self.var_1099_.update_last();
                    self.var_1115_.update_last();
                    self.var_1098_.update_last();
                    self.var_1044_.update_last();
                    self.var_1070_.update_last();
                    self.var_1050_.update_last();
                    self.var_1053_.update_last();
                    self.var_1049_.update_last();
                    self.var_1057_.update_last();
                    self.var_1063_.update_last();
                    self.var_1066_.update_last();
                    self.var_1069_.update_last();
                    self.var_1068_.update_last();
                    self.var_getOrientation_1062_.update_last();
                    self.var_1061_.update_last();
                    self.var_1079_.update_last();
                    self.var_1078_.update_last();
                    self.var_1085_.update_last();
                    self.var_1089_.update_last();
                    self.var_1088_.update_last();
                    self.var_1084_.update_last();
                    self.var_stop_1060_.update_last();
                    self.var_1059_.update_last();
                    self.var_faultyActualSpeed_1043_.update_last();
                    self.var_prioritize_1042_.update_last();
                    self.var_actualSpeed.update_last();
                    self.var_lidarFront.update_last();
                    self.var_lidarBack.update_last();
                    self.var_expectedSpeed.update_last();
                    self.var_brakingDist.update_last();

                    flush_required = flush && (self.current_ts != new_input_ts);
                    self.last_processed_ts = self.current_ts;
                    self.current_ts = new_input_ts;
                }
            }
        } else if new_input_ts < self.current_ts {
            panic!("{}: FATAL: decreasing timestamp received", self.current_ts);
        }
        Ok(())
    }
}

impl Default
    for State<(), fn(TesslaFloat, i64) -> Result<(), ()>, fn(TesslaFloat, i64) -> Result<(), ()>>
{
    fn default() -> Self {
        Self::new(|value, ts| Ok(output_var(value, "prioritize", ts, false)))
    }
}
