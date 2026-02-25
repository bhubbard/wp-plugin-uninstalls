#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgem_smtp_host'
wp option delete 'pgem_smtp_port'
wp option delete 'pgem_smtp_encryption_type'
wp option delete 'pgem_smtp_authentication'
wp option delete 'pgem_smtp_username'
wp option delete 'pgem_smtp_password'
wp option delete 'pgem_smtp_from_email'
wp option delete 'pgem_smtp_from_name'

# Delete Transients
wp transient delete 'pgem-message'
wp transient delete 'pgem-error'

