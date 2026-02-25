#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'legalpages_website'
wp option delete 'legalpages_email'
wp option delete 'legalpages_phone'
wp option delete 'legalpages_country'

