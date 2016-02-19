angular.module('loomioApp').factory 'NotificationModel', (BaseModel) ->
  class NotificationModel extends BaseModel
    @singular: 'notification'
    @plural: 'notifications'

    relationships: ->
      @belongsTo 'event'
      @belongsTo 'user'

    actor: ->
      @event().actor()

    kind: ->
      @event().kind

    group: ->
      @event().group()

    relevantRecord: ->
      @event().relevantRecord()
