#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_credit_link'
wp option delete 'xyz_wpf_installed_date'
wp option delete 'xyz_wfp_dnt_shw_notice'
wp option delete 'xyz_wpf_page_size'
wp option delete 'xyz_wpf_credit_dismiss'
wp option delete 'xyz_wpf_free_version'

