#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cirvgu_debug_mode'
wp option delete 'cirvgu_debug_log'
wp option delete 'cirvgu_rating_notice_installed'
wp option delete 'cirvgu_scan_results'
wp option delete 'cirvgu_last_scan_time'
wp option delete 'cirvgu_enable_alt_text_check'
wp option delete 'cirvgu_enable_heading_check'
wp option delete 'cirvgu_enable_contrast_check'
wp option delete 'cirvgu_enable_form_label_check'
wp option delete 'cirvgu_enable_link_text_check'
wp option delete 'cirvgu_rating_notice_dismissed'

