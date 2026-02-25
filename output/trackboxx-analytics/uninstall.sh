#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trackboxx_tracking_id'
wp option delete 'trackboxx_public_url'
wp option delete 'trackboxx_optout_text'
wp option delete 'trackboxx_optout_key'
wp option delete 'website_type'

