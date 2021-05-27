using System;
using Hydra.Core.Mediator.Integration;

namespace Hydra.User.Integration.Messages
{
    public class UserNotificationIntegrationEvent: IntegrationEvent
    {
        public UserNotificationIntegrationEvent(Guid id, string name, string email)
        {
            AggregateId = id;
            Name = name;
            Email = email;
        }

        public string Name { get; private set; }
        public string Email { get; private set; }
    }
}