#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twiz_override_network_settings'
wp option delete 'twiz_admin'
wp option delete 'twiz_db_version'
wp option delete 'twiz_global_status'
wp option delete 'twiz_cookie_js_status'
wp option delete 'twiz_network_activated'
wp option delete 'twiz_toggle'
wp option delete 'twiz_order_by'
wp option delete 'twiz_skin'
wp option delete 'twiz_bullet'
wp option delete 'twiz_setting_menu'
wp option delete 'twiz_hscroll_status'
wp option delete 'twiz_privacy_question_answered'
wp option delete 'twiz_sections'
wp option delete 'twiz_hardsections'
wp option delete 'twiz_export_filter'
wp option delete 'twiz_library'
wp option delete 'twiz_multi_sections'
wp option delete 'twiz_library_dir'
wp option delete 'ms_files_rewriting'

