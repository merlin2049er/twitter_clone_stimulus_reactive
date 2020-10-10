import CableReady from 'cableReady'
import consumer from "./consumer"

consumer.subscriptions.create("TimelineChannel", {

  received(data) {
    if (data.cableReady) CableReady.perform(data.operations)
  }
});
