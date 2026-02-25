#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_rsvp_enabled'
wp option delete 'dbem_bookings_currency'
wp option delete 'aff_default_referral_status'

