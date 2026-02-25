#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpEventos-email'
wp option delete 'wpEventos-password'
wp option delete 'wpEventos-installed'
wp option delete 'wp-eventos'

