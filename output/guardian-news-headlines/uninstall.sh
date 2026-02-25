#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guardian_headlines_sections'
wp option delete 'guardian_headlines_version'
wp option delete 'guardian_headlines_notified'

