#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_partnerize_partner_auth_table'
wp option delete '_partnerize_partner_participation_table'
wp option delete '_partnerize_partner_version'

