
namespace genericGame.Models;

public class Personaje
{
  private string _name { get; set; }
  private int _currentHp { get; }
  private int _currentDamage { get; set; }
  private int _objectCapacity { get; set; }
  private bool _isAlive{ get; }
  private Rol _actualRol { get;}
  private List<IObjeto> _objectsList = new List<IObjeto>();

  public void AddObject(Object obj)
  {
    if (objects.Count < _objectCapacity)
    {
      _objectsList.Add(obj);
    }

  }
  public void AddCurrentHp(int ammount)
  {
    if (_currentHp + ammount >= _maxHp)
    {
      _currentHp = _maxHp;
    }
    else
    {
      _currentHp += ammount;
    }

  }

  public void ReduceCurrentHp(int ammount)
  {
    if (_currentHp - ammount <= 0)
    {
      _currentHp = 0;
      _isAlive = false;
    }
    else
    {
      _currentHp -= ammount;
    }
  }

  public void UseObject(Object obj)
  {
    obj.useObject(this);
    _objectsList.Remove(obj);
  }

  public int AttackTo(Personaje objective)
  {
    objective.ReduceCurrentHp -= _currentDamage;
  }

  public int UseAbility(Personaje objective, int numHabilidad)
  {
    _actualRol.UseAbility(objective, numHabilidad);
  }


}
