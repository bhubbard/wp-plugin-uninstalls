#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'contact-button-id'
wp option delete 'contact-button-cb-verify-status'
wp option delete 'contact-button-cb-verify-curl-body'
wp option delete 'contact-button-cb-in-header'

