#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aff_def_ref_calc_key'
wp option delete 'aff_def_ref_calc_value'
wp option delete 'active_sitewide_plugins'

