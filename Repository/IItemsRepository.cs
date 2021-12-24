using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Catalog.Entities;

namespace Catalog.Repository
{
    public interface IItemsRepository
    {
        public Task<Item> GetItemAsync(Guid id);
        public Task<IEnumerable<Item>> GetItemsAsync();
        public Task CreateItemAsync(Item item);
        public Task UpdateItemAsync(Item item);
        public Task DeleteItemAsync(Guid id);
    }

}