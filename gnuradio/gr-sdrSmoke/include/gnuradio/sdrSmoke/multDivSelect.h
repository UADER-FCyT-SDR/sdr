/* -*- c++ -*- */
/*
 * Copyright 2024 UADER-FCyT.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 */

#ifndef INCLUDED_SDRSMOKE_MULTDIVSELECT_H
#define INCLUDED_SDRSMOKE_MULTDIVSELECT_H

#include <gnuradio/sdrSmoke/api.h>
#include <gnuradio/sync_block.h>

namespace gr {
namespace sdrSmoke {

/*!
 * \brief <+description of block+>
 * \ingroup sdrSmoke
 *
 */
class SDRSMOKE_API multDivSelect : virtual public gr::sync_block
{
public:
    typedef std::shared_ptr<multDivSelect> sptr;

    /*!
     * \brief Return a shared_ptr to a new instance of sdrSmoke::multDivSelect.
     *
     * To avoid accidental use of raw pointers, sdrSmoke::multDivSelect's
     * constructor is in a private implementation
     * class. sdrSmoke::multDivSelect::make is the public interface for
     * creating new instances.
     */
    static sptr make(bool selector = true);
};

} // namespace sdrSmoke
} // namespace gr

#endif /* INCLUDED_SDRSMOKE_MULTDIVSELECT_H */
