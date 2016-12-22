import Foundation

struct Endpoints {

  var gateway: String {
    return "/gateway/bot"
  }

  func addGuildMember(_ guildId: String, _ userId: String) -> String {
    return "/guilds/\(guildId)/members/\(userId)"
  }

  func addPinnedChannelMessage(_ channelId: String, _ messageId: String) -> String {
    return "/channels/\(channelId)/pins/\(messageId)"
  }

  func beginGuildPrune(_ guildId: String) -> String {
    return "/guilds/\(guildId)/prune"
  }

  func bulkDeleteMessages(_ channelId: String) -> String {
    return "/channels/\(channelId)/messages/bulk-delete"
  }

  func createChannelInvite(_ channelId: String) -> String {
    return "/channels/\(channelId)/invites"
  }

  func createGuildBan(_ guildId: String, _ userId: String) -> String {
    return "/guilds/\(guildId)/members/\(userId)"
  }

  func createGuildChannel(_ guildId: String) -> String {
    return "/guilds/\(guildId)/channels"
  }

  func createGuildIntegrations(_ guildId: String) -> String {
    return "/guilds/\(guildId)/integrations"
  }

  func createGuildRole(_ guildId: String) -> String {
    return "/guilds/\(guildId)/roles"
  }

  func createMessage(_ channelId: String) -> String {
    return "/channels/\(channelId)/messages"
  }

  func createReaction(_ channelId: String, _ messageId: String, _ reaction: Any) -> String {
    let base = "/channels/\(channelId)/messages/\(messageId)/reactions"
    if let reaction = reaction as? Emoji {
      return base + "/\(reaction.name):\(reaction.id)/@me"
    }else {
      return base + "/\(reaction as! String)/@me"
    }
  }

  func deleteAllReactions(_ channelId: String, _ messageId: String) -> String {
    return "/channels/\(channelId)/messages/\(messageId)/reactions"
  }

  func deleteChannel(_ channelId: String) -> String {
    return "/channels/\(channelId)"
  }

  func deleteChannelPermission(_ channelId: String, _ overwriteId: String) -> String {
    return "/channels/\(channelId)/permissions/\(overwriteId)"
  }

  func deleteGuild(_ guildId: String) -> String {
    return "/guilds/\(guildId)"
  }

  func deleteGuildIntegration(_ guildId: String, _ integrationId: String) -> String {
    return "/guilds/\(guildId)/integrations/\(integrationId)"
  }

  func deleteGuildRole(_ guildId: String, _ roleId: String) -> String {
    return "/guilds/\(guildId)/roles/\(roleId)"
  }

  func deleteMessage(_ channelId: String, _ messageId: String) -> String {
    return "/channels/\(channelId)/messages/\(messageId)"
  }

  func deleteOwnReaction(_ channelId: String, _ messageId: String, _ reaction: Any) -> String {
    let base = "/channels/\(channelId)/messages/\(messageId)/reactions"
    if let reaction = reaction as? Emoji {
      return base + "/\(reaction.name):\(reaction.id)/@me"
    }else {
      return base + "/\(reaction as! String)/@me"
    }
  }

  func deletePinnedChannelMessage(_ channelId: String, _ messageId: String) -> String {
    return "/channels/\(channelId)/pins/\(messageId)"
  }

  func deleteUserReaction(_ channelId: String, _ messageId: String, _ reaction: Any, _ userId: String) -> String {
    let base = "/channels/\(channelId)/messages/\(messageId)/reactions"
    if let reaction = reaction as? Emoji {
      return base + "/\(reaction.name):\(reaction.id)/\(userId)"
    }else {
      return base + "/\(reaction as! String)/\(userId)"
    }
  }

  func editChannelPermissions(_ channelId: String, _ overwriteId: String) -> String {
    return "/channels/\(channelId)/permissions/\(overwriteId)"
  }

  func editMessage(_ channelId: String, _ messageId: String) -> String {
    return "/channels/\(channelId)/messages/\(messageId)"
  }

  func getChannel(_ channelId: String) -> String {
    return "/channels/\(channelId)"
  }

  func getChannelInvites(_ channelId: String) -> String {
    return "/channels/\(channelId)/invites"
  }

  func getChannelMessage(_ channelId: String, _ messageId: String) -> String {
    return "/channels/\(channelId)/messages/\(messageId)"
  }

  func getChannelMessages(_ channelId: String) -> String {
    return "/channels/\(channelId)/messages"
  }

  func getGuild(_ guildId: String) -> String {
    return "/guilds/\(guildId)"
  }

  func getGuildBans(_ guildId: String) -> String {
    return "/guilds/\(guildId)/bans"
  }

  func getGuildChannels(_ guildId: String) -> String {
    return "/guilds/\(guildId)/channels"
  }

  func getGuildEmbed(_ guildId: String) -> String {
    return "/guilds/\(guildId)/embed"
  }

  func getGuildIntegrations(_ guildId: String) -> String {
    return "/guilds/\(guildId)/integrations"
  }

  func getGuildInvites(_ guildId: String) -> String {
    return "/guilds/\(guildId)/invites"
  }

  func getGuildMember(_ guildId: String, _ userId: String) -> String {
    return "/guilds/\(guildId)/members/\(userId)"
  }

  func getGuildPruneCount(_ guildId: String) -> String {
    return "/guilds/\(guildId)/prune"
  }

  func getGuildRoles(_ guildId: String) -> String {
    return "/guilds/\(guildId)/roles"
  }

  func getGuildVoiceRegions(_ guildId: String) -> String {
    return "/guilds/\(guildId)/regions"
  }

  func getPinnedMessages(_ channelId: String) -> String {
    return "/channels/\(channelId)/pins"
  }

  func getReactions(_ channelId: String, _ messageId: String, _ reaction: Any) -> String {
    let base = "/channels/\(channelId)/messages/\(messageId)/reactions"
    if let reaction = reaction as? Emoji {
      return base + "/\(reaction.name):\(reaction.id)"
    }else {
      return base + "/\(reaction as! String)"
    }
  }

  func groupDMRemoveRecipient(_ channelId: String, _ userId: String) -> String {
    return "/channels/\(channelId)/recipients/\(userId)"
  }

  func listGuildMembers(_ guildId: String) -> String {
    return "/guilds/\(guildId)/members"
  }

  func modifyChannel(_ channelId: String) -> String {
    return "/channels/\(channelId)"
  }

  func modifyGuild(_ guildId: String) -> String {
    return "/guilds/\(guildId)"
  }

  func modifyGuildChannelPosition(_ guildId: String) -> String {
    return "/guilds/\(guildId)/channels"
  }

  func modifyGuildEmbed(_ guildId: String) -> String {
    return "/guilds/\(guildId)/embed"
  }

  func modifyGuildIntegration(_ guildId: String, _ integrationId: String) -> String {
    return "/guilds/\(guildId)/integrations/\(integrationId)"
  }

  func modifyGuildMember(_ guildId: String, _ userId: String) -> String {
    return "/guilds/\(guildId)/members/\(userId)"
  }

  func modifyGuildRole(_ guildId: String, _ roleId: String) -> String {
    return "/guilds/\(guildId)/roles/\(roleId)"
  }

  func modifyGuildRolePositions(_ guildId: String) -> String {
    return "/guilds/\(guildId)/roles"
  }

  func removeGuildBan(_ guildId: String, _ userId: String) -> String {
    return "/guilds/\(guildId)/bans/\(userId)"
  }

  func removeGuildMember(_ guildId: String, _ userId: String) -> String {
    return "/guilds/\(guildId)/members/\(userId)"
  }

  func syncGuildIntegration(_ guildId: String, _ integrationId: String) -> String {
    return "/guilds/\(guildId)/integrations/\(integrationId)"
  }

  func triggerTypingIndicator(_ channelId: String) -> String {
    return "/channels/\(channelId)/typing"
  }

}