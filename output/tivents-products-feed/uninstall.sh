#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tivents_partner_id'
wp option delete 'tivents_primary_color'
wp option delete 'tivents_secondary_color'
wp option delete 'tivents_text_color'

