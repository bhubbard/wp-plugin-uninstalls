#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nt_page_in_transition'
wp option delete 'nt_page_out_transition'
wp option delete 'nt_page_in_duration'
wp option delete 'nt_page_out_duration'
wp option delete 'nt_show_loading'
wp option delete 'nt_loading_color'

