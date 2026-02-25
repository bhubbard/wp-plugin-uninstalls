#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsp_nop'
wp option delete 'wpsp_nops'
wp option delete 'wpsp_mnop'
wp option delete 'wpsp_cat'
wp option delete 'wpsp_direction'
wp option delete 'wpsp_readmore'
wp option delete 'wpsp_enable'
wp option delete 'wpsp_mousepause'
wp option delete 'wpsp_speed'
wp option delete 'wpsp_ptime'
wp option delete 'wpsp_thumbnail_enable'
wp option delete 'wpsp_title_enable'
wp option delete 'wpsp_date_enable'
wp option delete 'wpsp_excerpt_enable'
wp option delete 'wpsp_readmore_enable'
wp option delete 'wpsp_c_len'

