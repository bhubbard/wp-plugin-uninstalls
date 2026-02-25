#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'doctoreve_wt_uuid'
wp option delete 'doctoreve_wt_fab_enabled'
wp option delete 'doctoreve_wt_fab_theme'
wp option delete 'doctoreve_wt_fab_color'
wp option delete 'doctoreve_wt_fab_text'
wp option delete 'doctoreve_wt_comp_theme'
wp option delete 'doctoreve_wt_comp_accent'
wp option delete 'doctoreve_wt_comp_title'
wp option delete 'doctoreve_wt_comp_show_search'
wp option delete 'doctoreve_wt_comp_show_count'
wp option delete 'doctoreve_wt_comp_limit'

