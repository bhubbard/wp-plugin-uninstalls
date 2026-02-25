#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pvlt-modal-title'
wp option delete 'pvlt-modal-text'
wp option delete 'pvlt-modal-accept-button'
wp option delete 'pvlt-modal-cancel-button'
wp option delete 'pvlt_media_selector_attachment_id'
wp option delete 'pvlt-powered'
wp option delete 'pvlt-display-option'
wp option delete 'pvlt-time-interval'
wp option delete 'pvlt-cookie-interval'
wp option delete 'pvlt-show-options'
wp option delete 'pvlt-obscured'
wp option delete 'pvlt-disable-jquery'
wp option delete 'pvlt-paused'
wp option delete 'pvlt-uid'
wp option delete 'pvlt-sender-id'
wp option delete 'pvlt-publicKey'

