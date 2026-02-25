#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'epa_default_id'
wp option delete 'epa_enable'
wp option delete 'epa_bgcolor'
wp option delete 'epa_popup_delay'
wp option delete 'epa_expire'
wp option delete 'epa_popup_padding'
wp option delete 'epa_effect'
wp option delete 'epa_width'

