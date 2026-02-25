#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msov_track_enabled'
wp option delete 'msov_conversation_params'
wp option delete 'msov_enabled'
wp option delete 'msov_verification_params'

