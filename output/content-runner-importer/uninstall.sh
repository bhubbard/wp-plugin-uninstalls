#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crpi_username'
wp option delete 'crpi_api_key'
wp option delete 'crpi_password'
wp option delete 'crpi_email'
wp option delete 'crpi_token'
wp option delete 'crpi_valid_auth'

