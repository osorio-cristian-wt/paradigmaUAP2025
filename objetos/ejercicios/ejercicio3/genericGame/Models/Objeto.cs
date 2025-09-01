
namespace genericGame.Models;

public class Objeto
{
    private string _name;
    private int _duration;
    private int _strenght;
    public void useObject(Personaje personaje);
}

public class Redention : IObjeto
{
    private string _name = "Redencion";
    private int _duration = 0.5;
    private int _strenght = 20; 
    private string _description = $"Cura un {this._strenght}% de la vida faltante";

    
    public void useObject(Personaje personaje)
    {
        valToHeal = (personaje.getMaxHp() - personaje.getCurrentHp()) * strenght;
        personaje.Heal(valToHeal);
    }
}

public class DamagePotion : IObjeto
{
    private string _name = "Pocion de daño III";
    private int _duration = 5;
    private int _strenght = 10;
    private string _description = $"Aumenta el daño en {this._strenght}";

    public void useObject(Personaje personaje)
    {
        personaje._currentDamage = personaje._baseDamage + strenght;
    }

    public string getName()
    {
        return this._name;
    }
    public string getDescription()
    {
        return this._description;
    }
}
