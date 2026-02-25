#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmsb_thank_you_url'
wp option delete 'wpmsb_api_url'
wp option delete 'wpmsb_thankyou_url'
wp option delete 'wpmsb_slots'
wp option delete 'wpmsb_form_type'

