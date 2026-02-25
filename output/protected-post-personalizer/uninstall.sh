#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'password-protected-prefix'
wp option delete 'private-prefix'
wp option delete 'custom-preview-text'
wp option delete 'password-form-prefix'
wp option delete 'password-form-submit'
wp option delete 'passworded-preview-type'
wp option delete 'password-form-css'

