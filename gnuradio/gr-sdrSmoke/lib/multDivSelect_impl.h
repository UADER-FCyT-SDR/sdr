/* -*- c++ -*- */
/*
 * Copyright 2024 UADER-FCyT.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_SDRSMOKE_MULTDIVSELECT_IMPL_H
#define INCLUDED_SDRSMOKE_MULTDIVSELECT_IMPL_H

#include <gnuradio/sdrSmoke/multDivSelect.h>

namespace gr {
namespace sdrSmoke {

class multDivSelect_impl : public multDivSelect { private:

private:
    bool _selector;

public:
    multDivSelect_impl(bool selector);
    ~multDivSelect_impl();

    // Where all the action really happens
    int work(int noutput_items,
             gr_vector_const_void_star& input_items,
             gr_vector_void_star& output_items);
};

} // namespace sdrSmoke
} // namespace gr

#endif /* INCLUDED_SDRSMOKE_MULTDIVSELECT_IMPL_H */
