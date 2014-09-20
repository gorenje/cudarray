from libcpp cimport bool

cdef extern from "cudarray/elementwise.hpp" namespace 'cudarray':
    void add[T](const T *a, const T *b, int n, T *c)
    void sub[T](const T *a, const T *b, int n, T *c)
    void mul[T](const T *a, const T *b, int n, T *c)
    void div[T](const T *a, const T *b, int n, T *c)
    void add_broadcast[T](const T *a, const T *b, int m, int n,
                          bool broadcast_to_leading, T *c)
    void mul_broadcast[T](const T *a, const T *b, int m, int n,
                          bool broadcast_to_leading, T *c)
    void add_inplace[T](const T *a, const T *b, int n, T *c)
    void sub_inplace[T](const T *a, const T *b, int n, T *c)
    void mul_inplace[T](const T *a, const T *b, int n, T *c)
    void div_inplace[T](const T *a, const T *b, int n, T *c)
    void add_scalar[T](const T *a, const T b, int n, T *c)
    void sub_scalar[T](const T *a, const T b, int n, T *c)
    void mul_scalar[T](const T *a, const T b, int n, T *c)
    void div_scalar[T](const T *a, const T b, int n, T *c)
    void add_scalar_inplace[T](const T *a, const T b, int n)
    void sub_scalar_inplace[T](const T *a, const T b, int n)
    void mul_scalar_inplace[T](const T *a, const T b, int n)
    void div_scalar_inplace[T](const T *a, const T b, int n)
    void abs[T](const T *x, int n, T *y)
    void exp[T](const T *x, int n, T *y)
    void log[T](const T *x, int n, T *y)
    void sqrt[T](const T *x, int n, T *y)
    void tanh[T](const T *x, int n, T *y)
