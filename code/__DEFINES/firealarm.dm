///Designates a fire lock should be closed due to HEAT
#define FIRELOCK_ALARM_TYPE_HOT "firelock_alarm_type_hot"
///Designates a fire lock should be closed due to COLD
#define FIRELOCK_ALARM_TYPE_COLD "firelock_alarm_type_cold"
///Designates a fire lock should be closed due unknown reasons (IE fire alarm was pulled)
#define FIRELOCK_ALARM_TYPE_GENERIC "firelock_alarm_type_generic"

///Fire alert cleared by any means
#define FIRE_CLEAR (0<<0)
///Fire alert raised by pulling the fire alarm/air alarm alert button
#define FIRE_RAISED_GENERIC (1<<0)
///Fire alert raised by the air alarm (heat)
#define FIRE_RAISED_HOT (1<<1)
///Fire alert raised by the air alarm (cold)
#define FIRE_RAISED_COLD (1<<2)
///Fire alert raised by the air alarm (pressure)
#define FIRE_RAISED_PRESSURE (1<<3)
