#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dsv_token'
wp option delete 'dsv_email_validation'
wp option delete 'dsv_telephone_validation'
wp option delete 'dsv_password'
wp option delete 'dsv_error'

