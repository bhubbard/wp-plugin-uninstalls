#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sevu_show_errors'
wp option delete 'sevu_api_secret'
wp option delete 'sevu_api_public'
wp option delete 'sevu_api_address'
wp option delete 'sevu_cdn'

