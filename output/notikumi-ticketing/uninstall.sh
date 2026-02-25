#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom/css/three-cols.css'
wp option delete 'custom/css/single-col.css'
wp option delete 'custom/css/event-page.css'
wp option delete 'custom/css/color-custom.css'
wp option delete 'custom/css/custom-styles.css'
wp option delete 'ntk_current_template'
wp option delete 'ntk_content_key'
wp option delete 'ntk_event_key'
wp option delete 'ntk_sale_channels_key'
wp option delete 'ntk_events_title_key'
wp option delete 'ntk_checkout_custom_css_key'
wp option delete 'ntk_action_call_purchase_tickets'
wp option delete 'ntk_action_call_purchase_tickets_en'
wp option delete 'ntk_events_path_key'
wp option delete 'ntk_id'
wp option delete 'ntk_events_qt_key'
wp option delete 'ntk_venues_key'
wp option delete 'ntk_channels_key'
wp option delete 'ntk_organizations_key'
wp option delete 'ntk_users_key'
wp option delete 'ntk_content_temp_key'

