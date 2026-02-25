#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_credit_link'
wp option delete 'xyz_ihs_installed_date'
wp option delete 'xyz_ihs_dnt_shw_notice'
wp option delete 'xyz_ihs_premium_version_ads'
wp option delete 'xyz_ihs_credit_dismiss'
wp option delete 'xyz_ihs_sort_order'
wp option delete 'xyz_ihs_sort_field_name'
wp option delete 'xyz_ihs_dismiss'
wp option delete 'xyz_ihs_limit'
wp option delete 'xyz_ihs_exec_in_editor'
wp option delete 'xyz_ihs_free_version'

