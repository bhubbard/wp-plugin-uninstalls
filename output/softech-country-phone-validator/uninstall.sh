#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scpv_custom_class'
wp option delete 'scpv_enable_woo'
wp option delete 'scpv_apply_all_tel'
wp option delete 'scpv_default_country'
wp option delete 'scpv_woo_default_country'
wp option delete 'scpv_cf7_use_default_class'

