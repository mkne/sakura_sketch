#ifndef MsTimer2_h
#define MsTimer2_h

#if defined (__RX600__)
#define USING_001_MSTIMER
#else
#include <avr/interrupt.h>
#endif

namespace MsTimer2 {
#ifdef USING_001_MSTIMER
    extern float msecs;
#else
    extern unsigned long msecs;
#endif
    extern void (*func)();
    extern volatile unsigned long count;
    extern volatile char overflowing;
    extern volatile unsigned int tcnt2;

#ifdef USING_001_MSTIMER
    void set(float ms, void (*f)());
#else
    void set(unsigned long ms, void (*f)());
#endif
    void start();
    void stop();
    void _overflow();
}

#endif
