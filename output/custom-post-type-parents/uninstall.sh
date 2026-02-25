#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssn_sortby'
wp option delete 'ssn_show_all'
wp option delete 'ssn_exclude'
wp option delete 'ssn_hide_on_excluded'
wp option delete 'ssn_show_on_home'
wp option delete 'ssn_show_empty'
wp option delete 'ssn_a_heading'

