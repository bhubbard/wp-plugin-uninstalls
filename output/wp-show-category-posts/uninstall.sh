#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpscp_nop'
wp option delete 'wpscp_mnop'
wp option delete 'wpscp_cat'
wp option delete 'wpscp_readmore'
wp option delete 'wpscp_enable'
wp option delete 'wpscp_thumbnail_enable'
wp option delete 'wpscp_title_enable'
wp option delete 'wpscp_date_enable'
wp option delete 'wpscp_excerpt_enable'
wp option delete 'wpscp_readmore_enable'
wp option delete 'wpscp_c_len'
wp option delete 'wpscp_direction'
wp option delete 'wpscp_mousepause'
wp option delete 'wpscp_speed'
wp option delete 'wpscp_ptime'

