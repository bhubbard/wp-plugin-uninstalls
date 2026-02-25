#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecomate_business_logo'
wp option delete 'ecomate_business_name'
wp option delete 'ecomate_business_address'
wp option delete 'ecomate_business_phone'
wp option delete 'ecomate_terms'

