#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xyz_credit_link'
wp option delete 'xyz_ips_installed_date'
wp option delete 'xyz_ips_dnt_shw_notice'
wp option delete 'xyz_ips_premium_version_ads'
wp option delete 'xyz_ips_credit_dismiss'
wp option delete 'xyz_ips_sort_order'
wp option delete 'xyz_ips_sort_field_name'
wp option delete 'xyz_ips_auto_insert'
wp option delete 'xyz_ips_auto_exception'
wp option delete 'xyz_ips_limit'
wp option delete 'xyz_ips_exception_email'
wp option delete 'xyz_ips_exec_in_editor'
wp option delete 'xyz_ips_free_version'

