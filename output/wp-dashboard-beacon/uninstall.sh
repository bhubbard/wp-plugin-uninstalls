#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hsb_allowed_user_roles'
wp option delete 'hsb_helpscout_form_id'
wp option delete 'hsb_helpscout_subdomain'
wp option delete 'hsb_beacon_options'
wp option delete 'hsb_beacon_icon'
wp option delete 'hsb_beacon_colour'
wp option delete 'hsb_hide_credits'
wp option delete 'hsb_beacon_intro'
wp option delete 'hsb_allow_attachments'
wp option delete 'hsb_show_on_frontend'

