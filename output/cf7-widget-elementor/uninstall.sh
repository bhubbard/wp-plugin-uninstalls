#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-at'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-never'"
wp option delete 'dismissed-void-cf7-promotion-notice-ele-query-at'
wp option delete 'dismissed-void-cf7-promotion-notice-ele-query-never'
wp option delete 'void_cf7_elementor_activation_time'
wp option delete 'void_cf7_spare_me'
wp option delete 'void_cf7_with_elementor_ran_never'
wp option delete 'void_cf7_with_elementor_ran_time'
wp option delete 'void_cf7_with_elementor_ran'
wp option delete 'void_cf7_elep_2021_temporary'
wp option delete 'void_cf7_elep_2021_temporary_time'
wp option delete 'void_cf7_elep_2021_never'
wp option delete 'void_cf7_email_with_elementor_never'
wp option delete 'void_cf7_email_with_elementor'
wp option delete 'void_cf7_email_with_elementor_time'

