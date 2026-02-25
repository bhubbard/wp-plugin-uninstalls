#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'pricerunner_feed_hash'
wp option delete 'pricerunner_feed_active'
wp option delete 'pricerunner_feed_url'
wp option delete 'pricerunner_contact_domain'
wp option delete 'pricerunner_contact_name'
wp option delete 'pricerunner_contact_email'
wp option delete 'pricerunner_contact_phone'

