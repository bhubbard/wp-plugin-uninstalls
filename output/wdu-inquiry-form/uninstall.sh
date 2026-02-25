#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wdu_inquiryform_boot_switch'
wp option delete 'wdu_inquiryform_form_source'
wp option delete 'wdu_inquiryform_shortcode'

