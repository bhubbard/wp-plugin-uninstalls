#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cptt_dcp_disabled'
wp option delete 'cpt_toggle_disabled'
wp option delete 'cptt_dcp_all_cpts'
wp option delete 'cpt_toggle_all_cpts'

