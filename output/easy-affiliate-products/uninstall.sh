#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eap-amazon-country'
wp option delete 'eap-amazon-tag'
wp option delete 'eap-amazon-api-access-key'
wp option delete 'eap-amazon-api-secret'
wp option delete 'eap-buy-now-button'
wp option delete 'eap-amazon-link-type'
wp option delete 'eap-amazon-show-price'

