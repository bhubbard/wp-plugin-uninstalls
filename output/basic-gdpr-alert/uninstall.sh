#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_gdpr_alert_content'
wp option delete 'basic_gdpr_alert_button_text'
wp option delete 'basic_gdpr_alert_bgColor'
wp option delete 'basic_gdpr_alert_textColor'
wp option delete 'basic_gdpr_alert_zindex'
wp option delete 'basic_gdpr_alert_fontSize'
wp option delete 'basic_gdpr_alert_width'

