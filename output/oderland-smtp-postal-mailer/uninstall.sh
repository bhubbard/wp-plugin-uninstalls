#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oderland_smtp_postal_mailer_version'
wp option delete 'oderland_smtp_postal_mailer'
wp option delete 'oderland_smtp_postal_mailer_old_plugin_handled'
wp option delete 'smtp_postal'
wp option delete 'smtp_postal_version'
wp option delete 'smtp_postal_notices'
wp option delete 'oderland_smtp_postal_mailer_notices'

