#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'connectapre_business_name'
wp option delete 'connectapre_business_type'
wp option delete 'connectapre_enable_whatsapp'
wp option delete 'connectapre_agents_data'
wp option delete 'connectapre_wizard_completed'
wp option delete 'connectapre_offline_behavior'
wp option delete 'connectapre_primary_number'
wp option delete 'connectapre_offline_message'
wp option delete 'connectapre_display_delay'
wp option delete 'connectapre_scroll_delay'
wp option delete 'connectapre_sap_button_position_data'
wp option delete 'connectapre_sap_button_style_data'
wp option delete 'connectapre_fallback_primary_number'
wp option delete 'connectapre_default_greeting'
wp option delete 'connectapre_cta_text'
wp option delete 'connectapre_hide_when_offline'

