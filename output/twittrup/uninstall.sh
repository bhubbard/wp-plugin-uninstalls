#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twittrup_accountnr'
wp option delete 'twittrup-post-created'
wp option delete 'twittrup-post-created-text'
wp option delete 'twittrup-post-publish-showlink'
wp option delete 'twittrup-post-edit'
wp option delete 'twittrup-post-edit-text'
wp option delete 'twittrup-post-edit-showlink'
wp option delete 'twittrup-draft-created'
wp option delete 'twittrup-draft-created-text'
wp option delete 'twittrup-draft-created-showlink'
wp option delete 'twittrup-draft-edit'
wp option delete 'twittrup-draft-edit-text'
wp option delete 'twittrup-draft-edit-showlink'
wp option delete 'twittrup-draft-publish'
wp option delete 'twittrup-draft-publish-text'
wp option delete 'twittrup-draft-publish-showlink'
wp option delete 'twittrup-service'
wp option delete 'twittrUpdated'
wp option delete 'twittrup-twitterlogin'
wp option delete 'twittrup-twitterlogin_encrypted'
wp option delete 'twittrup-twitterlogin_username_1'
wp option delete 'twittrup-twitterlogin_password_1'
wp option delete 'twittrupInitialised'

