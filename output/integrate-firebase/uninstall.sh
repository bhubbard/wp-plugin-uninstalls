#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'firebase_credentials'
wp option delete 'firebase_database'

