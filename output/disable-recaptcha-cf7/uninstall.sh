#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dr_options'
wp option delete 'fh_dr_do_activation_redirect'
wp option delete 'fh_dr_show_activation_msg'

