#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'replace-protected-password-errors'
wp transient delete 'replace-protected-password-updated'

