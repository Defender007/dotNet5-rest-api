using System;
using System.Collections.Generic;
using Catalog.Entities;

namespace Catalog.Repository
{
    public interface IItemsRepository
    {
        public Item GetItem(Guid id);
        public IEnumerable<Item> GetItems();
        public void CreateItem(Item item);
        public void UpdateItem(Item item);
        public void DeleteItem(Guid id);
    }

}