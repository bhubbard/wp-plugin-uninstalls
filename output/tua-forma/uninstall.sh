#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tua-forma-smtp-recipients'
wp option delete 'tua-forma-error-message'
wp option delete 'tua-forma-successful-message'
wp option delete 'tua-forma-metadata'
wp option delete 'tua-forma-subject'
wp option delete 'tua-forma-honeypot'

